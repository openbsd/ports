# $OpenBSD: Makefile,v 1.3 2008/10/24 14:04:23 jasper Exp $

COMMENT=	modular perl shell
CATEGORIES=	shells

V=		0.96
DISTNAME=	Zoidberg-$V
PKGNAME=	zoidberg-$Vp0

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	PARDUS
MODULES=	cpan
CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-Exporter-Tidy \
		::devel/p5-Term-ReadLine-Zoid \
		::devel/p5-Env-PS1

post-install:
	${INSTALL_DATA} ${WRKINST}/etc/zoidrc ${PREFIX}/share/zoid/zoidrc.sample

.include <bsd.port.mk>
