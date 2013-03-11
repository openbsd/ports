# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:26 espie Exp $

COMMENT=	Perl module to authenticate against a Kerberos server
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Authen-Krb5-Simple-0.40
REVISION=	4
CATEGORIES=	security

MAINTAINER=	Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c com_err crypto krb5

CONFIGURE_ENV += KRB5_INCLUDE="/usr/include/kerberosV" \
		 KRB5_LIB="/usr/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
