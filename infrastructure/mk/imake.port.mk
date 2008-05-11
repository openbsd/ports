#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: imake.port.mk,v 1.4 2008/05/11 12:05:51 espie Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

.if empty(CONFIGURE_STYLE:L:Mnoman)
INSTALL_TARGET+=	install.man
.endif

XMKMF?=			xmkmf -a
XMKMF+=			-DPorts

.if !exists(${X11BASE})
IGNORE="uses imake, but ${X11BASE} not found"
.endif

MODIMAKE_configure= \
	if [ -e ${X11BASE}/lib/X11/config/ports.cf ] || \
		fgrep >/dev/null 2>/dev/null Ports \
			${X11BASE}/lib/X11/config/OpenBSD.cf; then \
		cd ${WRKSRC} && ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} ${XMKMF}; \
	else \
		echo >&2 "Error: your X installation is not recent enough"; \
		echo >&2 "Update to a more recent version, or use a ports tree"; \
		echo >&2 "that predates March 18, 2000"; \
		exit 1; \
	fi
# Kludge
.if ${CONFIGURE_STYLE:Mimake}
MODIMAKE_pre-install= \
	${SUDO} mkdir -p ${LOCALBASE}/lib/X11; \
	if [ ! -e ${LOCALBASE}/lib/X11/app-defaults ]; then \
		${SUDO} ln -sf /etc/X11/app-defaults ${LOCALBASE}/lib/X11/app-defaults; \
	fi
.endif
