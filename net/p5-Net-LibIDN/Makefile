# $OpenBSD: Makefile,v 1.6 2019/07/13 22:12:09 naddy Exp $

COMMENT =	Perl bindings for GNU Libidn

MODULES =	cpan
DISTNAME =	Net-LibIDN-0.12
CATEGORIES =	net
REVISION =	1
FIX_EXTRACT_PERMISSIONS=Yes

# Artistic
PERMIT_PACKAGE =Yes

WANTLIB += c idn perl

LIB_DEPENDS =	devel/libidn

CONFIGURE_ARGS =--with-libidn-inc=${LOCALBASE}/include \
		--with-libidn=${LOCALBASE}/lib

.include <bsd.port.mk>
