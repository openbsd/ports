# $OpenBSD: Makefile,v 1.11 2003/12/14 01:39:18 naddy Exp $

COMMENT=	"UUCP suite"

DISTNAME=	uucp-1.07
CATEGORIES=	net mail

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=uucp/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sbindir=${PREFIX}/libexec/uucp \
		--with-newconfigdir=${SYSCONFDIR}/uucp \
		--with-oldconfigdir=${SYSCONFDIR}/uucp
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

post-extract:
	@rm ${WRKSRC}/uucp.info*

SAMPLES=	call config dial dialcode passwd port sys1 sys2

post-install:
	@mv ${PREFIX}/libexec/uucp/uusched ${PREFIX}/bin
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/cu
	@chmod ${BINMODE} ${PREFIX}/bin/cu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/uucp
.for file in ${SAMPLES}
	${INSTALL_DATA} ${WRKSRC}/sample/${file} ${PREFIX}/share/examples/uucp
.endfor

.include <bsd.port.mk>
