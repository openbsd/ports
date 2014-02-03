# $OpenBSD: Makefile,v 1.25 2014/02/03 10:24:06 dcoppa Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	39

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
