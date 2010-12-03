# $OpenBSD: Makefile,v 1.34 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	perl module to manage XML RSS files

DISTNAME=	XML-RSS-1.43
REVISION=	1
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	devel/p5-DateTime \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-Test-Manifest \
		textproc/p5-XML-Parser>=2.23  \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Differences \
		devel/p5-Test-Manifest>=0.9 \
		devel/p5-Test-Pod-Coverage

MODCPAN_EXAMPLES=	Yes

post-install:
	find ${WRKSRC} -name \*.orig -print0 | xargs -0 rm -f
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
