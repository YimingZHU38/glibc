/* float copysign function, sparc32 version.
   Copyright (C) 2012-2021 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#include <sysdep.h>
#include <libm-alias-float.h>

ENTRY (__copysignf)
	sethi	%hi(0x80000000), %g1
	and	%o1, %g1, %o4
	andn	%o0, %g1, %o0
	or	%o0, %o4, %o0
	st	%o0, [%sp + 68]
	retl
	 ld	[%sp + 68], %f0
END (__copysignf)
libm_alias_float (__copysign, copysign)
