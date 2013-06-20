# $OpenBSD: Makefile,v 1.15 2013/06/20 06:54:37 ajacoutot Exp $

COMMENT=	Perl module to authenticate against a Kerberos server
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Authen-Krb5-Simple-0.43
CATEGORIES=	security
REVISION=	0

MAINTAINER=	Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto heimbase krb5 pthread roken
WANTLIB += wind

CONFIGURE_ENV=	skip_lib_check=1

MAKE_FLAGS=	OPTIMIZE="${CFLAGS} $$(krb5-config --cflags)" \
		OTHERLDFLAGS="$$(krb5-config --libs)"

.include <bsd.port.mk>
