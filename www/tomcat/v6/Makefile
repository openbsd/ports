# $OpenBSD: Makefile,v 1.32 2016/02/25 10:03:57 dcoppa Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	45

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
