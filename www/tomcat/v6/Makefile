# $OpenBSD: Makefile,v 1.46 2019/04/24 16:31:06 sthen Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server
PKGSPEC-main =	tomcat->=6,<7
REVISION =	6

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	53

RUN_DEPENDS-examples =www/tomcat/v6

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
