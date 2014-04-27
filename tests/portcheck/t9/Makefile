# $OpenBSD: Makefile,v 1.1 2014/04/27 17:59:21 zhuk Exp $
#
# Check for extra PERMIT_* lines

COMMENT-main =	test 9 main
COMMENT-foo =	test 9 foo
COMMENT-bar =	test 9 bar
COMMENT-buz =	test 9 buz
DISTNAME =	test-9

MULTI_PACKAGES =	-main -foo -bar -buz

PERMIT_PACKAGE_CDROM-main = yEs
  PERMIT_PACKAGE_FTP    = No
 PERMIT_PACKAGE_FTP-foo    = yes
PERMIT_DISTFILES_FTP  =  Yes
  PERMIT_DISTFILES_FTP-buz=  blah-blah-blah

.include <bsd.port.mk>
