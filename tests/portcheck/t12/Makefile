# $OpenBSD: Makefile,v 1.1 2014/05/08 15:44:42 zhuk Exp $
#
# Check for @exec/@unexec-delete of glib-compile-schemas
# when dependency is correct.

DISTNAME =		test-12

COMMENT-main =		test 12, correct handling
COMMENT-exec =		test 12, extra exec line
COMMENT-unexec =	test 12, extra unexec-delete line
COMMENT-noexec =	test 12, missing exec line
COMMENT-nounexec =	test 12, missing unexec-delete line
COMMENT-wrong =		test 12, wrong lines

MULTI_PACKAGES =	-main -exec -unexec -noexec -nounexec -wrong
MODULES =		devel/dconf

.include <bsd.port.mk>
