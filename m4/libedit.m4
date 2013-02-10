dnl Copyright 2013 Mo McRoberts.
dnl
dnl  Licensed under the Apache License, Version 2.0 (the "License");
dnl  you may not use this file except in compliance with the License.
dnl  You may obtain a copy of the License at
dnl
dnl      http://www.apache.org/licenses/LICENSE-2.0
dnl
dnl  Unless required by applicable law or agreed to in writing, software
dnl  distributed under the License is distributed on an "AS IS" BASIS,
dnl  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
dnl  See the License for the specific language governing permissions and
dnl  limitations under the License.
dnl
AC_DEFUN([LIBSQL_CHECK_LIBEDIT],[
AC_CONFIG_SUBDIRS([libedit])
AM_CPPFLAGS="$AM_CPPFLAGS -I\${top_builddir}/libedit/src -I\${top_srcdir}/libedit/src"
LIBEDIT_LIBS="\${top_builddir}/libedit/src/libedit.la"
LIBEDIT_SUBDIRS="libedit"
AC_SUBST([AM_CPPFLAGS])
AC_SUBST([LIBEDIT_LIBS])
AC_SUBST([LIBEDIT_SUBDIRS])
])dnl
