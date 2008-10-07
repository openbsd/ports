# $OpenBSD

COMMENT=		produce sprite animations using ASCII art

DISTNAME=		Term-Animation-2.4
CATEGORIES=		misc

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-Curses

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Term-Animation
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
		${PREFIX}/share/examples/p5-Term-Animation

.include <bsd.port.mk>
