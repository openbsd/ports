#   $OpenBSD: Makefile,v 1.2 2000/06/28 13:58:50 espie Exp $

DISTNAME=	libnet-1.0703
PKGNAME=	p5-libnet-1.0703
CATEGORIES=	net perl5
NEED_VERSION=	1.308
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

MAINTAINER=	espie@openbsd.org

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
CONFIGURE_STYLE=	perl

pre-configure:
	@cd ${WRKSRC} && perl ./Configure -d

post-build:
	@cd ${WRKSRC} && \
		sed -e 1s,/usr/local/bin/perl,/usr/bin/perl, <Configure >configure-libnet
post-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/configure-libnet ${PREFIX}/bin

.include <bsd.port.mk>
