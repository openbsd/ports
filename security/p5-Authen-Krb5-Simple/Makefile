# $OpenBSD: Makefile,v 1.5 2008/08/26 20:57:27 fgsch Exp $

COMMENT=	Perl module to authenticate against a Kerberos server
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Authen-Krb5-Simple-0.40
CATEGORIES=	security

MAINTAINER=	Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	crypto krb5

CONFIGURE_ENV += KRB5_INCLUDE="/usr/include/kerberosV" \
		 KRB5_LIB="/usr/lib"

.include <bsd.port.mk>
