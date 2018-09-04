# $OpenBSD: Makefile,v 1.41 2018/09/04 12:46:27 espie Exp $

COMMENT-main =	Java servlet 2.5 and Java server pages 2.1 server
REVISION-main =	1

MAJ_VER =	6
MIN_VER =	0
MICRO_VER =	53

RUN_DEPENDS-examples =www/tomcat/v${MAJ_VER},-main>=${MAJ_VER},<7

pre-patch:
	perl -pi -e "s/\r$$//" ${WRKSRC}/webapps/ROOT/index.*

.include <bsd.port.mk>
