# $OpenBSD: Makefile,v 1.1.1.1 2014/03/26 09:50:34 kirby Exp $

COMMENT =		Tk client for the Jabber instant messaging system

DISTNAME =		tkabber-${VERSION}

RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			devel/tcllib \
			security/tcltls \
			x11/bwidget

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile
	@perl -pi -e 's,wish,${MODTK_BIN},' ${WRKSRC}/Makefile \
		${WRKSRC}/tkabber.tcl ${WRKSRC}/examples/tools/tkabber_setstatus

post-install:
	@mv ${PREFIX}/share/doc/tkabber/examples \
		${PREFIX}/share/examples/tkabber

.include <bsd.port.mk>
