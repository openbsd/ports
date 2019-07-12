# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:57 sthen Exp $

COMMENT=	pluggable RSS/Atom aggregator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Plagger-0.7.17
REVISION=	3
CATEGORIES=	www textproc

CPAN_AUTHOR=	MIYAGAWA

HOMEPAGE=	http://plagger.org/

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_ARGS+=--default --skip

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Accessor \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-DateTime-Locale \
		devel/p5-File-Find-Rule \
		devel/p5-File-HomeDir \
		devel/p5-Module-Pluggable-Fast \
		devel/p5-Term-Encoding \
		devel/p5-Test-Base \
		devel/p5-Universal-require \
		devel/p5-YAML \
		mail/p5-MIME-Types \
		net/p5-Net-DNS \
		textproc/p5-Template \
		textproc/p5-Template-Provider-Encoding \
		textproc/p5-Text-Tags \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-RSS-LibXML \
		www/p5-XML-Atom \
		www/p5-XML-Feed \
		www/p5-HTML-Parser \
		www/p5-HTML-ResolveLink \
		www/p5-URI-Fetch \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

SHAREDIR=	${PREFIX}/share/p5-Plagger
SUBST_VARS+=	SHAREDIR

MODCPAN_EXAMPLES=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Plagger/{Plugin,Template}.pm

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${SHAREDIR}/assets
	cd ${WRKSRC}/assets && pax -rw . ${SHAREDIR}/assets

.include <bsd.port.mk>
