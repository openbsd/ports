# $OpenBSD: Makefile,v 1.4 2007/09/15 23:29:59 merdely Exp $

COMMENT=		Perl module to authenticate against a Kerberos server
SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		Authen-Krb5-Simple-0.31
CATEGORIES=		security

MAINTAINER=		Stephen Kirkham <sk@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		com_err crypto krb5

.include <bsd.port.mk>
