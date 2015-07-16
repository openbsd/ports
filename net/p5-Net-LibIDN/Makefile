# $OpenBSD: Makefile,v 1.2 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Perl bindings for GNU Libidn

MODULES =	cpan
DISTNAME =	Net-LibIDN-0.12
CATEGORIES =	net
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	idn
LIB_DEPENDS =	devel/libidn

CONFIGURE_ARGS =--with-libidn-inc=${LOCALBASE}/include \
		--with-libidn=${LOCALBASE}/lib

.include <bsd.port.mk>
