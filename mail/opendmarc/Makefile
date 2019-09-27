# $OpenBSD: Makefile,v 1.3 2019/09/27 21:28:14 jasper Exp $

COMMENT=	library and milter for DMARC

DISTNAME=	opendmarc-1.3.2
REVISION =	0

SHARED_LIBS +=	opendmarc             0.0

CATEGORIES=	mail

HOMEPAGE=	http://www.trusteddomain.org/opendmarc/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# BSD, Sendmail
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv idn intl milter pthread spf2

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opendmarc/}

LIB_DEPENDS=	devel/libidn \
		mail/libspf2 \
		mail/sendmail,-libmilter

SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu

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
