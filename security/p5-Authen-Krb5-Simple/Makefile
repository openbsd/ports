# $OpenBSD: Makefile,v 1.14 2013/06/17 19:29:58 ajacoutot Exp $

COMMENT=	Perl module to authenticate against a Kerberos server
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Authen-Krb5-Simple-0.43
CATEGORIES=	security

MAINTAINER=	Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto heimbase hx509 krb5 pthread roken
WANTLIB += wind

CONFIGURE_ENV=	skip_lib_check=1

MAKE_FLAGS=	OPTIMIZE="${CFLAGS} $$(krb5-config --cflags)" \
		OTHERLDFLAGS="$$(krb5-config --libs)"

.include <bsd.port.mk>
