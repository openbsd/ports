# $OpenBSD: Makefile,v 1.1.1.1 2015/03/18 08:37:33 bentley Exp $

COMMENT =		convert Texinfo data to mdoc input

DISTNAME =		texi2mdoc-0.1.2

CATEGORIES =		textproc

HOMEPAGE =		http://mdocml.bsd.lv/texi2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		http://mdocml.bsd.lv/texi2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

.include <bsd.port.mk>
