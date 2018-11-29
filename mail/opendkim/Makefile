# $OpenBSD: Makefile,v 1.3 2018/11/29 17:03:34 ajacoutot Exp $

COMMENT=	library and milter for DKIM (Domain Keys Identified Mail)

DISTNAME=	opendkim-2.10.3
REVISION=	1

SHARED_LIBS +=	opendkim             0.0      # 10.3

CATEGORIES=	mail

HOMEPAGE=	http://www.opendkim.org/

# BSD, Sendmail
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto milter pthread ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opendkim/}

LIB_DEPENDS=	mail/sendmail,-libmilter

TEST_FLAGS=	COV_LIBADD=-pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opendkim/
	${INSTALL_DATA} ${WRKSRC}/opendkim/opendkim.conf.sample \
	    ${PREFIX}/share/examples/opendkim/

.include <bsd.port.mk>
