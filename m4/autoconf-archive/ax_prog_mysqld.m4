# ===========================================================================
#      https://www.gnu.org/software/autoconf-archive/ax_prog_mysqld.html
# ===========================================================================
#
# SYNOPSIS
#
#   AX_PROG_MYSQLD
#
# DESCRIPTION
#
#   Check for the program 'mysqld' let script continue if exists & works
#   pops up error message if not.
#
#   Besides checking existence, this macro also set these environment
#   variables upon completion:
#
#     MYSQLD = which mysqld
#
# LICENSE
#
#   Copyright (c) 2008 Gleen Salmon <gleensalmon@yahoo.com>
#
#   This program is free software; you can redistribute it and/or modify it
#   under the terms of the GNU General Public License as published by the
#   Free Software Foundation; either version 2 of the License, or (at your
#   option) any later version.
#
#   This program is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
#   Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program. If not, see <https://www.gnu.org/licenses/>.
#
#   As a special exception, the respective Autoconf Macro's copyright owner
#   gives unlimited permission to copy, distribute and modify the configure
#   scripts that are the output of Autoconf when processing the Macro. You
#   need not follow the terms of the GNU General Public License when using
#   or distributing such scripts, even though portions of the text of the
#   Macro appear in them. The GNU General Public License (GPL) does govern
#   all other use of the material that constitutes the Autoconf Macro.
#
#   This special exception to the GPL applies to versions of the Autoconf
#   Macro released by the Autoconf Archive. When you make and distribute a
#   modified version of the Autoconf Macro, you may extend this special
#   exception to the GPL to apply to your modified version as well.

#serial 7

AU_ALIAS([AC_PROG_MYSQLD], [AX_PROG_MYSQLD])
AC_DEFUN([AX_PROG_MYSQLD],[
AC_REQUIRE([AC_EXEEXT])dnl
AC_PATH_PROG(MYSQLD, mysqld$EXEEXT, nocommand)
if test "$MYSQLD" = nocommand; then
	AC_MSG_ERROR([mysqld not found in $PATH])
fi;dnl
])
