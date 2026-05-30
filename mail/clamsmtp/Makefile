COMMENT=	SMTP virus filter

DISTNAME=	clamsmtp-1.10.2
CATEGORIES=	mail

HOMEPAGE=	http://thewalter.net/stef/software/clamsmtp/
SITES=		${HOMEPAGE}

RUN_DEPENDS=	security/clamav

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/clamsmtp
	${INSTALL_DATA} ${WRKSRC}/doc/clamsmtpd.conf \
	    ${PREFIX}/share/examples/clamsmtp

.include <bsd.port.mk>
