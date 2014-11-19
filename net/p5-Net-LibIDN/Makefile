# $OpenBSD: Makefile,v 1.1.1.1 2014/11/19 18:46:33 giovanni Exp $

SHARED_ONLY =	Yes

COMMENT =	Perl bindings for GNU Libidn

MODULES =	cpan
DISTNAME =	Net-LibIDN-0.12
CATEGORIES =	net

# Artistic
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	idn
LIB_DEPENDS =	devel/libidn

CONFIGURE_ARGS =--with-libidn-inc=${LOCALBASE}/include \
		--with-libidn=${LOCALBASE}/lib

.include <bsd.port.mk>
