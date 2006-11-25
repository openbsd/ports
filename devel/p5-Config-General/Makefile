# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT=        "generic configuration parser, inspired by apache"

MODULES=	cpan
DISTNAME=	Config-General-2.31
CATEGORIES=     devel
HOMEPAGE=	http://www.daemon.de/config-general/

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# the 2.31 tarball includes an extra copy of Extended,
# which is probably not intentional.
post-extract:
	rm ${WRKSRC}/Extended.pm

.include <bsd.port.mk>
