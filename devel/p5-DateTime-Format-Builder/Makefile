# $OpenBSD: Makefile,v 1.4 2008/10/08 12:41:46 jasper Exp $

COMMENT= 	create DateTime parser classes and objects

MODULES=	cpan 
DISTNAME=	DateTime-Format-Builder-0.7901
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Validate \
		::devel/p5-Class-Factory-Util \
		::devel/p5-DateTime-Format-Strptime \
		::devel/p5-Task-Weaken
# intentionally no p5-DateTime-Format-IBeat, what's the use ?

REGRESS_DEPENDS=::devel/p5-DateTime-Format-HTTP \
		::devel/p5-DateTime-Format-Mail

CONFIGURE_STYLE=modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-DateTime-Format-Builder
	${INSTALL_DATA} ${WRKSRC}/examples/*.pm \
		${PREFIX}/share/examples/p5-DateTime-Format-Builder

.include <bsd.port.mk>
