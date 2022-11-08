/*
 * $Id: AccountDAOAppException.java,v 1.1.2.1 2001/03/02 12:18:12 vijaysr Exp $
 * Copyright 2001 Sun Microsystems, Inc. All rights reserved.
 * Copyright 2001 Sun Microsystems, Inc. Tous droits r�serv�s.
 */

package com.sun.j2ee.blueprints.customer.account.exceptions;

/**
 * AccountDAOAppException is an exception that extends the
 * standard Exception. This is thrown by the DAOs of the account
 * component when there is some failure because of user error
 */
public class AccountDAOAppException extends Exception {

    /**
     * Constructor
     * @param str    a string that explains what the exception condition is
     */
    public AccountDAOAppException (String str) {
        super(str);
    }

    /**
     * Default constructor. Takes no arguments
     */
    public AccountDAOAppException () {
        super();
    }

}