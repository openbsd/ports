# $OpenBSD: Makefile,v 1.33 2016/06/29 16:14:44 espie Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	45
REVISION =	0

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
