/**
 * Copyright (c) 2016 NumberFour AG.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   NumberFour AG - Initial API and implementation
 */
package org.eclipse.n4js.tests.validation

import com.google.inject.Inject
import org.eclipse.n4js.N4JSInjectorProvider
import org.eclipse.n4js.n4JS.Script
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.eclipse.xtext.testing.validation.ValidationTestHelper
import org.junit.Test
import org.junit.runner.RunWith

/**
 */
@InjectWith(N4JSInjectorProvider)
@RunWith(XtextRunner)
class IDEBUG_317_Test {
	@Inject
	extension ParseHelper<Script>

	@Inject
	extension ValidationTestHelper

	@Test
	def void testErrorAttachedToCorrectObject() {
		val script = '''class A { @'''.parse
		script.validate // make sure we don't see any AssertionErrors
	}
}
