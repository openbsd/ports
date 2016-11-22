# $OpenBSD: Makefile,v 1.1.1.1 2016/11/22 20:12:33 jca Exp $

COMMENT=	library and milter for DKIM (Domain Keys Identified Mail)

DISTNAME=	opendkim-2.10.3

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

.include <bsd.port.mk>
