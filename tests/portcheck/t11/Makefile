# $OpenBSD: Makefile,v 1.1 2014/05/07 22:28:05 zhuk Exp $
#
# Check for @exec/@unexec-delete of glib-compile-schemas

DISTNAME =		test-11

COMMENT-main =		test 11, correct handling
COMMENT-exec =		test 11, extra exec line
COMMENT-unexec =	test 11, extra unexec-delete line
COMMENT-noexec =	test 11, missing exec line
COMMENT-nounexec =	test 11, missing unexec-delete line
COMMENT-nodep =		test 11, missing dependency
COMMENT-wrong =		test 11, wrong lines

MULTI_PACKAGES =	-main -exec -unexec -noexec -nounexec -wrong -nodep

WANTLIB =		glib-2.0
WANTLIB-nodep =

LIB_DEPENDS =		devel/glib2
LIB_DEPENDS-nodep =

.include <bsd.port.mk>
