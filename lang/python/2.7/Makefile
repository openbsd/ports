# $OpenBSD: Makefile,v 1.25 2013/05/07 08:03:42 fgsch Exp $

VERSION =		2.7
PATCHLEVEL =		.4
REVISION =		1
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

pre-configure:
	touch ${WRKSRC}/pybuilddir.txt

.include <bsd.port.mk>
