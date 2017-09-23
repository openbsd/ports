# $OpenBSD: Makefile,v 1.4 2017/09/23 10:51:07 sthen Exp $

COMMENT =	Perl bindings for GNU Libidn

MODULES =	cpan
DISTNAME =	Net-LibIDN-0.12
CATEGORIES =	net
REVISION =	1

# Artistic
PERMIT_PACKAGE_CDROM =Yes

WANTLIB += c idn perl

LIB_DEPENDS =	devel/libidn

CONFIGURE_ARGS =--with-libidn-inc=${LOCALBASE}/include \
		--with-libidn=${LOCALBASE}/lib

.include <bsd.port.mk>
