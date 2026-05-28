COMMENT=	library and milter for DKIM (Domain Keys Identified Mail)

# should be able to switch back to proper tarballs for new releases
V=		2.10.3
GH_ACCOUNT=	trusteddomainproject
GH_PROJECT=	OpenDKIM
GH_TAGNAME=	rel-opendkim-${V:S/./-/g}
PKGNAME=	opendkim-${V}
REVISION=	4

SHARED_LIBS +=	opendkim             0.0      # 10.3

CATEGORIES=	mail

HOMEPAGE=	http://www.opendkim.org/

# BSD, Sendmail
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto milter pthread ssl

LIB_DEPENDS=	mail/sendmail,-libmilter

TEST_FLAGS=	COV_LIBADD=-pthread

SEPARATE_BUILD=	Yes

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.13
CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS=	--enable-replace_rules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opendkim/
	${INSTALL_DATA} ${WRKSRC}/opendkim/opendkim.conf.sample \
	    ${PREFIX}/share/examples/opendkim/

.include <bsd.port.mk>
