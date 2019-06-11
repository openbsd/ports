# $OpenBSD: Makefile,v 1.47 2019/06/11 00:38:36 kurt Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server
PKGSPEC-main =	tomcat->=6,<7
REVISION =	7

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	53

RUN_DEPENDS-examples =www/tomcat/v6

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
