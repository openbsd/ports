# $OpenBSD: Makefile,v 1.42 2019/03/24 22:24:14 sthen Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server
REVISION-main =	2

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	53

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
