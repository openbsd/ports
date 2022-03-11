COMMENT=	library and milter for DMARC

V=		1.4.1.1
GH_ACCOUNT=	trusteddomainproject
GH_PROJECT=	OpenDMARC
GH_TAGNAME=	rel-opendmarc-${V:C/\./-/g}
DISTNAME=	opendmarc-$V
REVISION=	0

SHARED_LIBS +=	opendmarc             1.0

CATEGORIES=	mail

HOMEPAGE=	http://www.trusteddomain.org/opendmarc/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# BSD, Sendmail
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv idn intl m milter pthread spf2

LIB_DEPENDS=	devel/libidn \
		mail/libspf2 \
		mail/sendmail,-libmilter

SEPARATE_BUILD= Yes

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --with-spf \
		--with-spf2-include="${LOCALBASE}/include" \
		--with-spf2-lib="${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opendmarc/
	${INSTALL_DATA} ${WRKSRC}/opendmarc/opendmarc.conf.sample \
		${PREFIX}/share/examples/opendmarc/

.include <bsd.port.mk>
