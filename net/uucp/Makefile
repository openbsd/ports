# $OpenBSD: Makefile,v 1.15 2005/11/01 14:43:45 naddy Exp $

COMMENT=	"UUCP suite"

DISTNAME=	uucp-1.07
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net mail

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_GNU:=uucp/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sbindir=${PREFIX}/libexec/uucp \
		--with-newconfigdir=${SYSCONFDIR}/uucp \
		--with-oldconfigdir=${SYSCONFDIR}/uucp

SAMPLES=	call config dial dialcode passwd port sys1 sys2

pre-build:
	@perl -pi -e "s,/usr/local/conf/uucp,${SYSCONFDIR}/uucp,g" \
		${WRKSRC}/sample/* ${WRKSRC}/uucp.texi
	@perl -pi -e "s,/usr/spool/uucp,/var/spool/uucp,g" \
		${WRKSRC}/sample/* ${WRKSRC}/uucp.texi
	@perl -pi -e "s,/usr/spool/anonymous,/var/spool/anonymous,g" \
		${WRKSRC}/sample/config ${WRKSRC}/uucp.texi
	@perl -pi -e "s,/usr/lib/uucp/uucico,${PREFIX}/libexec/uucp/uucico,g" \
		${WRKSRC}/uucp.texi

post-install:
	@mv ${PREFIX}/libexec/uucp/uusched ${PREFIX}/bin
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/cu
	@chmod ${BINMODE} ${PREFIX}/bin/cu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/uucp
.for file in ${SAMPLES}
	${INSTALL_DATA} ${WRKSRC}/sample/${file} ${PREFIX}/share/examples/uucp
.endfor

.include <bsd.port.mk>
