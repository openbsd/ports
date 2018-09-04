# $OpenBSD: Makefile,v 1.5 2018/09/04 12:46:19 espie Exp $

COMMENT =		Tk client for the Jabber instant messaging system

DISTNAME =		tkabber-${VERSION}
REVISION =		2

RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			devel/tcllib \
			net/tcludp \
			security/tcltls \
			x11/bwidget

do-configure:
	perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile
	${MODTCL_WISH_ADJ} ${WRKSRC}/Makefile ${WRKSRC}/tkabber.tcl \
		${WRKSRC}/examples/tools/tkabber_setstatus

post-install:
	mv ${PREFIX}/share/doc/tkabber/examples \
		${PREFIX}/share/examples/tkabber

.include <bsd.port.mk>
