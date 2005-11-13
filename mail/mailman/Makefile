# $OpenBSD: Makefile,v 1.36 2005/11/13 17:48:41 jakob Exp $

COMMENT=	"mailing list manager with web interface"

DISTNAME=	mailman-2.1.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail www

HOMEPAGE=	http://www.gnu.org/software/mailman/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mailman/}
EXTRACT_SUFX=		.tgz

PYTHON_VER=		2.3
SUBST_VARS=		PYTHON_VER
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

NO_REGRESS=		Yes

MMDOC=			${PREFIX}/share/doc/mailman
MMHOME=			${PREFIX}/lib/mailman
MMSPOOL=		/var/spool/mailman

FAKE_FLAGS=		DIRSETGID=":"

# gnu still breaks the pathes as prefix is actually mailman's home
CONFIGURE_STYLE=	simple
# do not use --without-permcheck as this requires the mailman user and group
# to exist, otherwise there will be problems running mailman
CONFIGURE_ARGS+=	--prefix='${MMHOME}' \
			--with-mailhost=localhost.my.domain \
			--with-python=${LOCALBASE}/bin/python${PYTHON_VER} \
			--with-urlhost=localhost.my.domain \
			--with-var-prefix='${MMSPOOL}' \
			--without-permcheck \
			--with-username=_mailman \
			--with-groupname=_mailman

FLAVORS=	postfix
FLAVOR?=
.if ${FLAVOR:L:Mpostfix}
CONFIGURE_ARGS+=--with-mail-gid=_mailman
.else
CONFIGURE_ARGS+=--with-mail-gid=daemon
.endif

post-install:
	@${INSTALL_DATA_DIR} ${MMDOC}
	@for file in FAQ NEWS README* UPGRADING; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMDOC}; \
	done
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${MMDOC}

.include <bsd.port.mk>
