/*******************************************************************************
 * Copyright (c) 2015 Dell Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Daniel Ford, Dell Corporation - initial API and implementation
 *******************************************************************************/
package com.dell.research.bc.eth.solidity.editor.tests

import com.dell.research.bc.eth.solidity.editor.SolidityInjectorProvider
import com.dell.research.bc.eth.solidity.editor.solidity.Solidity
import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.eclipse.xtext.junit4.validation.ValidationTestHelper
import org.junit.Ignore
import org.junit.Test
import org.junit.runner.RunWith

import static com.dell.research.bc.eth.solidity.editor.tests.TestConstants.*

@RunWith(typeof(XtextRunner))
@InjectWith(typeof(SolidityInjectorProvider))
class ElementaryTypeNameTest {
    @Inject extension ParseHelper<Solidity>;
    @Inject extension ValidationTestHelper

    val VALID_ELEMENTARY_TYPE_NAME = '''
        «ELEMENTARY_TYPE_NAME_1» {}
    '''

    @Ignore
    @Test
    def void givenValidElementaryTypeName_thenNoErrors() {
        VALID_ELEMENTARY_TYPE_NAME.parse.assertNoErrors
    }

//    @Test
//    def void givenValidElementaryTypeName_thenParsedNameIsCorrect() {
//        Assert::assertEquals(CONTRACT_NAME_1,  VALID_ELEMENTARY_TYPE_NAME.parse.contract.name);
//    }
} // ElementaryTypeNameTest
