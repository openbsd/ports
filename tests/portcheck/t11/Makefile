# $OpenBSD: Makefile,v 1.2 2014/05/08 15:44:42 zhuk Exp $
#
# Check for @exec/@unexec-delete of glib-compile-schemas
# when dependency is wrong.

DISTNAME =		test-11

COMMENT-main =		test 11, wrong dependency
COMMENT-exec =		test 11, extra exec line
COMMENT-unexec =	test 11, extra unexec-delete line
COMMENT-noexec =	test 11, missing exec line
COMMENT-nounexec =	test 11, missing unexec-delete line
COMMENT-wrong =		test 11, wrong lines

MULTI_PACKAGES =	-main -exec -unexec -noexec -nounexec -wrong
LIB_DEPENDS-main =	devel/glib2
WANTLIB-main =		glib-2.0

.include <bsd.port.mk>
