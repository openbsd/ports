# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:53 naddy Exp $

COMMENT =	Perl bindings for GNU Libidn

MODULES =	cpan
DISTNAME =	Net-LibIDN-0.12
CATEGORIES =	net
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	idn perl
LIB_DEPENDS =	devel/libidn

CONFIGURE_ARGS =--with-libidn-inc=${LOCALBASE}/include \
		--with-libidn=${LOCALBASE}/lib

.include <bsd.port.mk>
