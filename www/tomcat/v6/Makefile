# $OpenBSD: Makefile,v 1.27 2014/10/01 14:14:52 dcoppa Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	41
REVISION =	0

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
