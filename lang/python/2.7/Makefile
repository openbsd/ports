# $OpenBSD: Makefile,v 1.24 2013/04/28 00:51:34 fgsch Exp $

VERSION =		2.7
PATCHLEVEL =		.4
REVISION =		0
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

pre-configure:
	touch ${WRKSRC}/pybuilddir.txt

.include <bsd.port.mk>
