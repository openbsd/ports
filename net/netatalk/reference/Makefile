# $OpenBSD: Makefile,v 1.1.1.1 2002/07/23 11:47:35 naddy Exp $

NOT_FOR_ARCHS=	powerpc		# char is unsigned

COMMENT=	"file and print services for AppleTalk networks"

DISTNAME=       netatalk-990130
CATEGORIES=	net
MASTER_SITES=	ftp://terminator.rs.itd.umich.edu/unix/netatalk/ \
		ftp://ftp.hanse.de/sites/transit/mirror/terminator.rs.itd.umich.edu/unix/netatalk/

HOMEPAGE=	http://www.umich.edu/~rsug/netatalk/

MAINTAINER=	Ian McWilliam <i.mcwilliam@uws.edu.au>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTOPTS="${CFLAGS} -Wall" \
		PREFIX="${PREFIX}" SYSCONFDIR="${SYSCONFDIR}"
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR="${WRKINST}"

SYSCONFDIR=	/etc/netatalk

# NOTES:
# Will compile with kerberos support in apfd and papd.
# Haven't tested kerberos support as there is no MacOS
# support for kerberos outside the US, so your on your
# own. Still need to add support for AFS. Will update
# the Port shortly.

post-extract:
	@cp -f ${FILESDIR}/cvolume_iconres.h ${WRKSRC}/etc/afpd

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
