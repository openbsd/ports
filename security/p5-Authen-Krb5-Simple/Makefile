# $OpenBSD: Makefile,v 1.12 2012/08/23 15:52:47 sthen Exp $

COMMENT=	Perl module to authenticate against a Kerberos server
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Authen-Krb5-Simple-0.40
REVISION=	4
CATEGORIES=	security

MAINTAINER=	Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c com_err crypto krb5

CONFIGURE_ENV += KRB5_INCLUDE="/usr/include/kerberosV" \
		 KRB5_LIB="/usr/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
