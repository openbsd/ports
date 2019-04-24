# $OpenBSD: Makefile,v 1.45 2019/04/24 16:26:58 sthen Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server
REVISION =	5

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	53

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
