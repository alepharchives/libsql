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
AC_DEFUN([LIBSQL_CHECK_MYSQL],[
AC_CHECK_PROG([MYSQL_CONFIG],[mysql_config],[mysql_config])
if ! test x"$MYSQL_CONFIG" = x"" ; then
   engine_mysql="yes"
   ENGINE_SUBDIRS="$ENGINE_SUBDIRS mysql"
   MYSQL_CPPFLAGS=`$MYSQL_CONFIG --include`
   MYSQL_LIBDIR=`$MYSQL_CONFIG --variable=pkglibdir`
   MYSQL_LIBS=`$MYSQL_CONFIG --libs_r`
   if test -r "$MYSQL_LIBDIR/libmysqlclient_r.18.dylib" ; then
   	  mysql_darwin_fixups=yes
   fi
fi
AC_SUBST([MYSQL_CONFIG])
AC_SUBST([MYSQL_CPPFLAGS])
AC_SUBST([MYSQL_LIBS])
AC_SUBST([MYSQL_LIBDIR])
AC_SUBST([mysql_darwin_fixups])
])dnl