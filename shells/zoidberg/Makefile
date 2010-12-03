# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:47 ajacoutot Exp $

COMMENT=	modular perl shell
CATEGORIES=	shells

V=		0.96
DISTNAME=	Zoidberg-$V
PKGNAME=	zoidberg-$V
REVISION=	2

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	PARDUS
MODULES=	cpan
CONFIGURE_STYLE=modbuild
CONFIGURE_ARGS=	install_path=etc="${SYSCONFDIR}/" \
		install_path=doc="${PREFIX}/share/doc/zoid/" \
		install_path=share="${PREFIX}/share/zoid/"
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Exporter-Tidy \
		devel/p5-Term-ReadLine-Zoid \
		devel/p5-Env-PS1

post-install:
	${INSTALL_DATA} ${WRKINST}/${SYSCONFDIR}/zoidrc ${PREFIX}/share/zoid/zoidrc.sample

.include <bsd.port.mk>
