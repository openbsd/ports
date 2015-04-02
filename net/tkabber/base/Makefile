# $OpenBSD: Makefile,v 1.2 2015/04/02 20:23:56 czarkoff Exp $

COMMENT =		Tk client for the Jabber instant messaging system

DISTNAME =		tkabber-${VERSION}

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
