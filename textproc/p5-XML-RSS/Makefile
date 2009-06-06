# $OpenBSD: Makefile,v 1.29 2009/06/06 21:59:38 ajacoutot Exp $

COMMENT=	perl module to manage XML RSS files

DISTNAME=	XML-RSS-1.43
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

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

EXAMPLE_LOC=	${PREFIX}/share/examples/p5-XML-RSS

post-install:
	find ${WRKSRC} -name \*.orig -print0 | xargs -0 rm -f
	${INSTALL_DATA_DIR} ${EXAMPLE_LOC}
	cd ${WRKSRC}/examples && pax -rw . ${EXAMPLE_LOC}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_LOC}

.include <bsd.port.mk>
