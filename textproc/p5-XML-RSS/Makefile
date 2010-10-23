# $OpenBSD: Makefile,v 1.32 2010/10/23 11:59:58 jasper Exp $

COMMENT=	perl module to manage XML RSS files

DISTNAME=	XML-RSS-1.43
REVISION=	0
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	::devel/p5-DateTime \
		::devel/p5-DateTime-Format-Mail \
		::devel/p5-DateTime-Format-W3CDTF \
		::devel/p5-Test-Manifest \
		:p5-XML-Parser->=2.23:textproc/p5-XML-Parser  \
		::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::devel/p5-Test-Differences \
		:p5-Test-Manifest->=0.9:devel/p5-Test-Manifest \
		::devel/p5-Test-Pod-Coverage

MODCPAN_EXAMPLES=	Yes

post-install:
	find ${WRKSRC} -name \*.orig -print0 | xargs -0 rm -f
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
