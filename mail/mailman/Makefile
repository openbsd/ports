# $OpenBSD: Makefile,v 1.7 2002/04/07 22:30:23 matt Exp $

COMMENT=	"mailing list manager with web interface"

DISTNAME=	mailman-2.0.8
CATEGORIES=     mail
NEED_VERSION=	1.500

HOMEPAGE=	http://www.gnu.org/software/mailman/mailman.html

MAINTAINER=	Nikolay Sturm <nikolay.sturm@desy.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	mailman
EXTRACT_SUFX=		.tgz

PYTHON_VER=		2.1
BUILD_DEPENDS=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=		${BUILD_DEPENDS}

NO_REGRESS=		Yes

MMDOC=			${PREFIX}/share/doc/mailman
MMEXAMPLES=		${PREFIX}/share/examples/mailman
MMHOME=			${PREFIX}/lib/mailman
MMSPOOL=		/var/spool/mailman

FAKE_FLAGS=		prefix="${WRKINST}${MMHOME}" \
			var_prefix="${WRKINST}${MMSPOOL}" \
			MAKE="make prefix=${WRKINST}${MMHOME} \
				   var_prefix=${WRKINST}${MMSPOOL}" \
			DIRSETGID=":"

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--with-var-prefix="${MMSPOOL}" \
			--prefix="${MMHOME}" \
			--with-python=${LOCALBASE}/bin/python${PYTHON_VER}

FLAVORS=postfix
FLAVOR?=
.if ${FLAVOR:L:Mpostfix}
CONFIGURE_ARGS+=--with-mail-gid=nobody
.else
CONFIGURE_ARGS+=--with-mail-gid=daemon
.endif

post-install:
	@${INSTALL_DATA_DIR} ${MMDOC}
	@${INSTALL_DATA_DIR} ${MMEXAMPLES}
	@for file in FAQ NEWS README* UPGRADING; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMDOC}; \
	done
	@${INSTALL_DATA} files/README.OpenBSD ${MMDOC}
	@for file in filters/bowa-strip misc/pending_subscriptions.db; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMEXAMPLES}; \
	done

.include <bsd.port.mk>
