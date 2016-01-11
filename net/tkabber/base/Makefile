# $OpenBSD: Makefile,v 1.4 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		Tk client for the Jabber instant messaging system

DISTNAME =		tkabber-${VERSION}
REVISION =		1

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
