# $OpenBSD: Makefile,v 1.12 2000/08/10 17:53:31 brad Exp $

DISTNAME=       netatalk-990130
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=   ftp://terminator.rs.itd.umich.edu/unix/netatalk/ \
		ftp://ftp.hanse.de/sites/transit/mirror/terminator.rs.itd.umich.edu/unix/netatalk/

HOMEPAGE=	http://www.umich.edu/~rsug/netatalk/

MAINTAINER=	ianm@cit.nepean.uws.edu.au	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTOPTS="${CFLAGS} -Wall"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly.

post-patch:
	@rm -rf ${WRKSRC}/include/netatalk
	@ln -sf /usr/include/netatalk ${WRKSRC}/include/netatalk
	@rm -f ${WRKSRC}/sys/netatalk/*.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netatalk
	${INSTALL_DATA} ${WRKSRC}/config/AppleVolumes.system \
		${PREFIX}/share/examples/netatalk
	${INSTALL_DATA} ${WRKSRC}/config/AppleVolumes.default \
		${PREFIX}/share/examples/netatalk
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netatalk
	${INSTALL_DATA} ${WRKSRC}/INSTALL/README.OPENBSD \
		${PREFIX}/share/doc/netatalk

.include <bsd.port.mk>
